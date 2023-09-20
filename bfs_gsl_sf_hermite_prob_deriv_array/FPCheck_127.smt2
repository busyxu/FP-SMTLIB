(declare-fun b_ack!850 () (_ BitVec 32))
(declare-fun a_ack!852 () (_ BitVec 32))
(declare-fun c_ack!851 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!850 #x00000000)))
(assert (not (bvslt a_ack!852 #x00000000)))
(assert (not (= #x00000000 b_ack!850)))
(assert (not (= #x00000001 b_ack!850)))
(assert (not (= #x00000000 a_ack!852)))
(assert (not (= #x00000001 a_ack!852)))
(assert (not (bvslt (bvsub b_ack!850 a_ack!852) #x00000000)))
(assert (not (bvslt (bvsub b_ack!850 a_ack!852) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!850 a_ack!852))))
(assert (not (= #x00000001 (bvsub b_ack!850 a_ack!852))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!851) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!851))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!850 a_ack!852)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!851))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) c_ack!851)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!851))
          ((_ to_fp 11 53) #x3cb0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!851))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
