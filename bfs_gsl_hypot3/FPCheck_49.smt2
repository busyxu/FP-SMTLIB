(declare-fun c_ack!275 () (_ BitVec 64))
(declare-fun b_ack!274 () (_ BitVec 64))
(declare-fun a_ack!276 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!274))
            (fp.abs ((_ to_fp 11 53) c_ack!275)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!276))
            (fp.abs ((_ to_fp 11 53) c_ack!275)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!274))
            (fp.abs ((_ to_fp 11 53) c_ack!275)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!276))
                           (fp.abs ((_ to_fp 11 53) c_ack!275)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!276))
                           (fp.abs ((_ to_fp 11 53) c_ack!275)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!274))
                           (fp.abs ((_ to_fp 11 53) c_ack!275)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!274))
                           (fp.abs ((_ to_fp 11 53) c_ack!275))))))
  (FPCHECK_FADD_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
