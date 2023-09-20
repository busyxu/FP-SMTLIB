(declare-fun a_ack!312 () (_ BitVec 64))
(declare-fun b_ack!311 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!312))
       (fp.abs ((_ to_fp 11 53) b_ack!311))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!312))
            (fp.abs ((_ to_fp 11 53) b_ack!311)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!311)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!312))) a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!312))
                           (fp.abs ((_ to_fp 11 53) b_ack!311)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!312))
                           (fp.abs ((_ to_fp 11 53) b_ack!311))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!312))
                           (fp.abs ((_ to_fp 11 53) b_ack!311)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!312))
                           (fp.abs ((_ to_fp 11 53) b_ack!311))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
