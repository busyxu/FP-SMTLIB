(declare-fun x1_ack!3366 () (_ BitVec 64))
(declare-fun x0_ack!3370 () (_ BitVec 64))
(declare-fun y0_ack!3367 () (_ BitVec 64))
(declare-fun x_ack!3368 () (_ BitVec 64))
(declare-fun y_ack!3369 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3370) ((_ to_fp 11 53) x1_ack!3366))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3367) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3368) ((_ to_fp 11 53) x0_ack!3370))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3368) ((_ to_fp 11 53) x1_ack!3366))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3369) ((_ to_fp 11 53) y0_ack!3367))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3369) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3366)
                       ((_ to_fp 11 53) x0_ack!3370))
               ((_ to_fp 11 53) x0_ack!3370))
       ((_ to_fp 11 53) x1_ack!3366)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3366)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3366)
                       ((_ to_fp 11 53) x0_ack!3370)))
       ((_ to_fp 11 53) x0_ack!3370)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3367))
               ((_ to_fp 11 53) y0_ack!3367))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3367)))
       ((_ to_fp 11 53) y0_ack!3367)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3369)
                       ((_ to_fp 11 53) y0_ack!3367))
               ((_ to_fp 11 53) y0_ack!3367))
       ((_ to_fp 11 53) y_ack!3369)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3369)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3369)
                       ((_ to_fp 11 53) y0_ack!3367)))
       ((_ to_fp 11 53) y0_ack!3367)))

(check-sat)
(exit)
