(declare-fun a_ack!230 () (_ BitVec 32))
(declare-fun b_ack!228 () (_ BitVec 32))
(declare-fun c_ack!229 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!230 #x00000000)))
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (= #x00000000 a_ack!230))
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!228))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) c_ack!229))
  c_ack!229))

(check-sat)
(exit)
