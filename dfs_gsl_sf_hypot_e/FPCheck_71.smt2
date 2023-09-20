(declare-fun a_ack!240 () (_ BitVec 64))
(declare-fun b_ack!239 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!240))
            (fp.abs ((_ to_fp 11 53) b_ack!239)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!240))
       (fp.abs ((_ to_fp 11 53) b_ack!239))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!239))
                           (fp.abs ((_ to_fp 11 53) a_ack!240)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!239))
                           (fp.abs ((_ to_fp 11 53) a_ack!240))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
