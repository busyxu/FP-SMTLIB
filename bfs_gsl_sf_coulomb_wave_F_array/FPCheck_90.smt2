(declare-fun d_ack!539 () (_ BitVec 64))
(declare-fun b_ack!538 () (_ BitVec 32))
(declare-fun a_ack!541 () (_ BitVec 64))
(declare-fun c_ack!540 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!539) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!538))
(assert (not (bvsle #x00000001 b_ack!538)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!541) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!540)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!540)
                                   ((_ to_fp 11 53) c_ack!540))))))
  (FPCHECK_FSUB_OVERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!540)))))

(check-sat)
(exit)
