(declare-fun x1_ack!451 () (_ BitVec 64))
(declare-fun x0_ack!454 () (_ BitVec 64))
(declare-fun x2_ack!452 () (_ BitVec 64))
(declare-fun xx_ack!453 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!454) ((_ to_fp 11 53) x1_ack!451)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!451) ((_ to_fp 11 53) x2_ack!452)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!451)
                       ((_ to_fp 11 53) x0_ack!454))
               ((_ to_fp 11 53) x0_ack!454))
       ((_ to_fp 11 53) x1_ack!451)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!451)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!451)
                       ((_ to_fp 11 53) x0_ack!454)))
       ((_ to_fp 11 53) x0_ack!454)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!452)
                       ((_ to_fp 11 53) x1_ack!451))
               ((_ to_fp 11 53) x1_ack!451))
       ((_ to_fp 11 53) x2_ack!452)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!452)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!452)
                       ((_ to_fp 11 53) x1_ack!451)))
       ((_ to_fp 11 53) x1_ack!451)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!451)
                    ((_ to_fp 11 53) x0_ack!454))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!452)
                    ((_ to_fp 11 53) x1_ack!451))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!453) ((_ to_fp 11 53) x0_ack!454))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!453) ((_ to_fp 11 53) x2_ack!452))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!453) ((_ to_fp 11 53) x0_ack!454))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!453) ((_ to_fp 11 53) x1_ack!451)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!451) ((_ to_fp 11 53) xx_ack!453))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!452)
               ((_ to_fp 11 53) x1_ack!451))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
