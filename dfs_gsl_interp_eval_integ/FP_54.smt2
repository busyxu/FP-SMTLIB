(declare-fun x1_ack!2938 () (_ BitVec 64))
(declare-fun x0_ack!2942 () (_ BitVec 64))
(declare-fun x2_ack!2939 () (_ BitVec 64))
(declare-fun b_ack!2941 () (_ BitVec 64))
(declare-fun a_ack!2940 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2942) ((_ to_fp 11 53) x1_ack!2938)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2938) ((_ to_fp 11 53) x2_ack!2939)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2938)
                       ((_ to_fp 11 53) x0_ack!2942))
               ((_ to_fp 11 53) x0_ack!2942))
       ((_ to_fp 11 53) x1_ack!2938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2938)
                       ((_ to_fp 11 53) x0_ack!2942)))
       ((_ to_fp 11 53) x0_ack!2942)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2939)
                       ((_ to_fp 11 53) x1_ack!2938))
               ((_ to_fp 11 53) x1_ack!2938))
       ((_ to_fp 11 53) x2_ack!2939)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2939)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2939)
                       ((_ to_fp 11 53) x1_ack!2938)))
       ((_ to_fp 11 53) x1_ack!2938)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2938)
                    ((_ to_fp 11 53) x0_ack!2942))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2939)
                    ((_ to_fp 11 53) x1_ack!2938))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2940) ((_ to_fp 11 53) b_ack!2941))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2940) ((_ to_fp 11 53) x0_ack!2942))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2941) ((_ to_fp 11 53) x2_ack!2939))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2940) ((_ to_fp 11 53) b_ack!2941))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2940) ((_ to_fp 11 53) x0_ack!2942))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2940) ((_ to_fp 11 53) x1_ack!2938))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2941) ((_ to_fp 11 53) x0_ack!2942))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2941) ((_ to_fp 11 53) x1_ack!2938)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2938) ((_ to_fp 11 53) b_ack!2941))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2938)
                    ((_ to_fp 11 53) x0_ack!2942))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2939)
                    ((_ to_fp 11 53) x1_ack!2938))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
