(declare-fun x_ack!2724 () (_ BitVec 64))
(declare-fun nu_ack!2723 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2724)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2724) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) nu_ack!2723)
                ((_ to_fp 11 53) #x4000000000000000))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!2723)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!2723)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!2723)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!2724)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!2724)
                               ((_ to_fp 11 53) #x3ff0000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!2 (and a!1
                (fp.eq (fp.div roundNearestTiesToEven
                               ((_ to_fp 11 53) nu_ack!2723)
                               ((_ to_fp 11 53) #x4000000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))

(check-sat)
(exit)
