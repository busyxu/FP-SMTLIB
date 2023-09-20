(declare-fun a_ack!131 () (_ BitVec 32))
(declare-fun b_ack!130 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!131 #x00000000)))
(assert (not (= #x00000000 a_ack!131)))
(assert (not (= #x00000001 a_ack!131)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) b_ack!130)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 (fp.abs ((_ to_fp 11 53) b_ack!130))))

(check-sat)
(exit)
