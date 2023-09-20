(declare-fun c_ack!539 () (_ BitVec 64))
(declare-fun b_ack!538 () (_ BitVec 64))
(declare-fun a_ack!540 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!538))
       (fp.abs ((_ to_fp 11 53) c_ack!539))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!540))
            (fp.abs ((_ to_fp 11 53) b_ack!538)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!538))
       (fp.abs ((_ to_fp 11 53) c_ack!539))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!538))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!539))
          (fp.abs ((_ to_fp 11 53) b_ack!538)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!539))
          (fp.abs ((_ to_fp 11 53) b_ack!538)))))

(check-sat)
(exit)
