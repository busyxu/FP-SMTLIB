(declare-fun b_ack!228 () (_ BitVec 32))
(declare-fun a_ack!230 () (_ BitVec 32))
(declare-fun c_ack!229 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (not (bvslt a_ack!230 #x00000000)))
(assert (not (= #x00000000 b_ack!228)))
(assert (not (= #x00000001 b_ack!228)))
(assert (= #x00000000 a_ack!230))
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (not (= #x00000000 b_ack!228)))
(assert (not (= #x00000001 b_ack!228)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) c_ack!229)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!229)))
  #x3cb0000000000000))

(check-sat)
(exit)
