(declare-fun limit_ack!538 () (_ BitVec 64))
(declare-fun epsabs_ack!543 () (_ BitVec 64))
(declare-fun a_ack!544 () (_ BitVec 64))
(declare-fun x1_ack!539 () (_ BitVec 64))
(declare-fun x2_ack!540 () (_ BitVec 64))
(declare-fun x3_ack!541 () (_ BitVec 64))
(declare-fun b_ack!542 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!538)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!543)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!539) ((_ to_fp 11 53) a_ack!544))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!540) ((_ to_fp 11 53) x1_ack!539))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!541) ((_ to_fp 11 53) x2_ack!540))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!542) ((_ to_fp 11 53) x3_ack!541))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!544)
                                   ((_ to_fp 11 53) x1_ack!539))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!544)
                           ((_ to_fp 11 53) x1_ack!539)))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
