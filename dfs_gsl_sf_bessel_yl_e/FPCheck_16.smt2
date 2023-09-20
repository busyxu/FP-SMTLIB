(declare-fun a_ack!67 () (_ BitVec 32))
(declare-fun b_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!67 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!67))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!66) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!66)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!66)
                  ((_ to_fp 11 53) b_ack!66))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!66)
                  ((_ to_fp 11 53) b_ack!66)))
  #x4028000000000000))

(check-sat)
(exit)
