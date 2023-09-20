(declare-fun x_ack!3064 () (_ BitVec 64))
(declare-fun nu_ack!3063 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3064)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3064) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) #x0000000000000000)
                (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) nu_ack!3063)
                        ((_ to_fp 11 53) #x4000000000000000)))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!3064)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) x_ack!3064)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!3064)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!3064)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x0000000000000000)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) nu_ack!3063)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3064)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3063)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.geq (fp.abs (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!3064)
                          ((_ to_fp 11 53) #x3ff0000000000000)))
          (fp.mul roundNearestTiesToEven
                  a!1
                  ((_ to_fp 11 53) #x0010000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3064)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3063)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs a!1))
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
