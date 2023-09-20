(declare-fun x1_ack!4862 () (_ BitVec 64))
(declare-fun x0_ack!4866 () (_ BitVec 64))
(declare-fun x2_ack!4863 () (_ BitVec 64))
(declare-fun b_ack!4865 () (_ BitVec 64))
(declare-fun a_ack!4864 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4866) ((_ to_fp 11 53) x1_ack!4862)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4862) ((_ to_fp 11 53) x2_ack!4863)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4862)
                       ((_ to_fp 11 53) x0_ack!4866))
               ((_ to_fp 11 53) x0_ack!4866))
       ((_ to_fp 11 53) x1_ack!4862)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4862)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4862)
                       ((_ to_fp 11 53) x0_ack!4866)))
       ((_ to_fp 11 53) x0_ack!4866)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4863)
                       ((_ to_fp 11 53) x1_ack!4862))
               ((_ to_fp 11 53) x1_ack!4862))
       ((_ to_fp 11 53) x2_ack!4863)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4863)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4863)
                       ((_ to_fp 11 53) x1_ack!4862)))
       ((_ to_fp 11 53) x1_ack!4862)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4862)
                    ((_ to_fp 11 53) x0_ack!4866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4863)
                    ((_ to_fp 11 53) x1_ack!4862))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4864) ((_ to_fp 11 53) b_ack!4865))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4864) ((_ to_fp 11 53) x0_ack!4866))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4865) ((_ to_fp 11 53) x2_ack!4863))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4864) ((_ to_fp 11 53) b_ack!4865))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4864) ((_ to_fp 11 53) x0_ack!4866))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4864) ((_ to_fp 11 53) x1_ack!4862))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4865) ((_ to_fp 11 53) x0_ack!4866))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4865) ((_ to_fp 11 53) x1_ack!4862))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4862)
                    ((_ to_fp 11 53) x0_ack!4866))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
