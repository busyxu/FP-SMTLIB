(declare-fun c_ack!575 () (_ BitVec 64))
(declare-fun b_ack!574 () (_ BitVec 64))
(declare-fun a_ack!576 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!574))
       (fp.abs ((_ to_fp 11 53) c_ack!575))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!576))
            (fp.abs ((_ to_fp 11 53) b_ack!574)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!574))
       (fp.abs ((_ to_fp 11 53) c_ack!575))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!574))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!576))
                           (fp.abs ((_ to_fp 11 53) b_ack!574)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!576))
                           (fp.abs ((_ to_fp 11 53) b_ack!574)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!574))
                           (fp.abs ((_ to_fp 11 53) b_ack!574)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!574))
                           (fp.abs ((_ to_fp 11 53) b_ack!574)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!575))
                           (fp.abs ((_ to_fp 11 53) b_ack!574)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!575))
                           (fp.abs ((_ to_fp 11 53) b_ack!574))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!1 a!2) a!3)
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!1 a!2) a!3))))

(check-sat)
(exit)
