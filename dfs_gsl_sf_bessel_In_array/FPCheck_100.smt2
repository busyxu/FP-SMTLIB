(declare-fun c_ack!442 () (_ BitVec 64))
(declare-fun a_ack!443 () (_ BitVec 32))
(declare-fun b_ack!441 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!442))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!441 a_ack!443)))
(assert (not (bvslt a_ack!443 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!442) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!441))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!442))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!442))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!442)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!442))
                           (fp.abs ((_ to_fp 11 53) c_ack!442)))
                   (fp.abs ((_ to_fp 11 53) c_ack!442)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!442)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!442)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!442))
                           (fp.abs ((_ to_fp 11 53) c_ack!442)))
                   (fp.abs ((_ to_fp 11 53) c_ack!442)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) c_ack!442)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!442))
                           (fp.abs ((_ to_fp 11 53) c_ack!442)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!442))
                           (fp.abs ((_ to_fp 11 53) c_ack!442)))
                   ((_ to_fp 11 53) #x4012000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!442))
                           (fp.abs ((_ to_fp 11 53) c_ack!442)))
                   ((_ to_fp 11 53) #x4012000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FSUB_ACCURACY a!2 #x3ff0000000000000))))

(check-sat)
(exit)
