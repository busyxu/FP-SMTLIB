(declare-fun a_ack!98 () (_ BitVec 32))
(declare-fun b_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!98 #x00000000)))
(assert (not (= #x00000000 a_ack!98)))
(assert (not (= #x00000001 a_ack!98)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!97) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!97)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!98))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!97))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) b_ack!97)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!97))
          ((_ to_fp 11 53) #x3cb0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!97))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
