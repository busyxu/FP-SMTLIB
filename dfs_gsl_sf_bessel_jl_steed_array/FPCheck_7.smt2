(declare-fun a_ack!31 () (_ BitVec 32))
(declare-fun b_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!31 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!30) ((_ to_fp 11 53) #x3f30000000000000)))
(assert (bvsle #x00000000 a_ack!31))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3fe0000000000000)
                        ((_ to_fp 11 53) b_ack!30)))
        ((_ to_fp 11 53) #x0010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) b_ack!30))
  b_ack!30))

(check-sat)
(exit)
