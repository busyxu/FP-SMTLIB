(declare-fun x1_ack!4190 () (_ BitVec 64))
(declare-fun x0_ack!4194 () (_ BitVec 64))
(declare-fun x2_ack!4191 () (_ BitVec 64))
(declare-fun b_ack!4193 () (_ BitVec 64))
(declare-fun a_ack!4192 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4194) ((_ to_fp 11 53) x1_ack!4190)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4190) ((_ to_fp 11 53) x2_ack!4191)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4190)
                       ((_ to_fp 11 53) x0_ack!4194))
               ((_ to_fp 11 53) x0_ack!4194))
       ((_ to_fp 11 53) x1_ack!4190)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4190)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4190)
                       ((_ to_fp 11 53) x0_ack!4194)))
       ((_ to_fp 11 53) x0_ack!4194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4191)
                       ((_ to_fp 11 53) x1_ack!4190))
               ((_ to_fp 11 53) x1_ack!4190))
       ((_ to_fp 11 53) x2_ack!4191)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4191)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4191)
                       ((_ to_fp 11 53) x1_ack!4190)))
       ((_ to_fp 11 53) x1_ack!4190)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4190)
                    ((_ to_fp 11 53) x0_ack!4194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4191)
                    ((_ to_fp 11 53) x1_ack!4190))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4192) ((_ to_fp 11 53) b_ack!4193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4192) ((_ to_fp 11 53) x0_ack!4194))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4193) ((_ to_fp 11 53) x2_ack!4191))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4192) ((_ to_fp 11 53) b_ack!4193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4192) ((_ to_fp 11 53) x0_ack!4194))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4192) ((_ to_fp 11 53) x1_ack!4190))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4193) ((_ to_fp 11 53) x0_ack!4194))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4193) ((_ to_fp 11 53) x1_ack!4190))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4190)
                    ((_ to_fp 11 53) x0_ack!4194))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
