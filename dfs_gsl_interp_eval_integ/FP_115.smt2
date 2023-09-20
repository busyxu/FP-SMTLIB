(declare-fun x1_ack!7087 () (_ BitVec 64))
(declare-fun x0_ack!7091 () (_ BitVec 64))
(declare-fun x2_ack!7088 () (_ BitVec 64))
(declare-fun b_ack!7090 () (_ BitVec 64))
(declare-fun a_ack!7089 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7091) ((_ to_fp 11 53) x1_ack!7087)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7087) ((_ to_fp 11 53) x2_ack!7088)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7087)
                       ((_ to_fp 11 53) x0_ack!7091))
               ((_ to_fp 11 53) x0_ack!7091))
       ((_ to_fp 11 53) x1_ack!7087)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7087)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7087)
                       ((_ to_fp 11 53) x0_ack!7091)))
       ((_ to_fp 11 53) x0_ack!7091)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7088)
                       ((_ to_fp 11 53) x1_ack!7087))
               ((_ to_fp 11 53) x1_ack!7087))
       ((_ to_fp 11 53) x2_ack!7088)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7088)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7088)
                       ((_ to_fp 11 53) x1_ack!7087)))
       ((_ to_fp 11 53) x1_ack!7087)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7087)
                    ((_ to_fp 11 53) x0_ack!7091))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7088)
                    ((_ to_fp 11 53) x1_ack!7087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7089) ((_ to_fp 11 53) b_ack!7090))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7089) ((_ to_fp 11 53) x0_ack!7091))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7090) ((_ to_fp 11 53) x2_ack!7088))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7089) ((_ to_fp 11 53) b_ack!7090))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7089) ((_ to_fp 11 53) x0_ack!7091))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7089) ((_ to_fp 11 53) x1_ack!7087)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7087) ((_ to_fp 11 53) a_ack!7089))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7090) ((_ to_fp 11 53) x1_ack!7087))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7090) ((_ to_fp 11 53) x2_ack!7088))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7088)
                    ((_ to_fp 11 53) x1_ack!7087))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
