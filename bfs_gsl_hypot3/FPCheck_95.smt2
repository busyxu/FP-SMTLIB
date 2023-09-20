(declare-fun c_ack!476 () (_ BitVec 64))
(declare-fun b_ack!475 () (_ BitVec 64))
(declare-fun a_ack!477 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!475))
       (fp.abs ((_ to_fp 11 53) c_ack!476))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!477))
            (fp.abs ((_ to_fp 11 53) b_ack!475)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!475))
       (fp.abs ((_ to_fp 11 53) c_ack!476))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!475))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!477))
                           (fp.abs ((_ to_fp 11 53) b_ack!475)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!477))
                           (fp.abs ((_ to_fp 11 53) b_ack!475)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!475))
                           (fp.abs ((_ to_fp 11 53) b_ack!475)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!475))
                           (fp.abs ((_ to_fp 11 53) b_ack!475))))))
  (FPCHECK_FADD_ACCURACY a!1 a!2)))

(check-sat)
(exit)
