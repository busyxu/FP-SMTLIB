(declare-fun b_ack!144 () (_ BitVec 64))
(declare-fun a_ack!145 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) b_ack!144) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!145) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!145)
                       ((_ to_fp 11 53) a_ack!145))
               ((_ to_fp 11 53) a_ack!145))
       ((_ to_fp 11 53) a_ack!145)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!145)
                       ((_ to_fp 11 53) a_ack!145))
               ((_ to_fp 11 53) a_ack!145))
       ((_ to_fp 11 53) a_ack!145)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!145)
                           ((_ to_fp 11 53) a_ack!145))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!145)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!145)
                           ((_ to_fp 11 53) a_ack!145))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!145) a!1)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!145))
            ((_ to_fp 11 53) #x3fdc71c71c71c71c)))))

(check-sat)
(exit)
