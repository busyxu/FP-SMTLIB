(declare-fun x1_ack!4145 () (_ BitVec 64))
(declare-fun x0_ack!4149 () (_ BitVec 64))
(declare-fun x2_ack!4146 () (_ BitVec 64))
(declare-fun b_ack!4148 () (_ BitVec 64))
(declare-fun a_ack!4147 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4149) ((_ to_fp 11 53) x1_ack!4145)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4145) ((_ to_fp 11 53) x2_ack!4146)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4145)
                       ((_ to_fp 11 53) x0_ack!4149))
               ((_ to_fp 11 53) x0_ack!4149))
       ((_ to_fp 11 53) x1_ack!4145)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4145)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4145)
                       ((_ to_fp 11 53) x0_ack!4149)))
       ((_ to_fp 11 53) x0_ack!4149)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4146)
                       ((_ to_fp 11 53) x1_ack!4145))
               ((_ to_fp 11 53) x1_ack!4145))
       ((_ to_fp 11 53) x2_ack!4146)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4146)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4146)
                       ((_ to_fp 11 53) x1_ack!4145)))
       ((_ to_fp 11 53) x1_ack!4145)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4145)
                    ((_ to_fp 11 53) x0_ack!4149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4146)
                    ((_ to_fp 11 53) x1_ack!4145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4147) ((_ to_fp 11 53) b_ack!4148))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4147) ((_ to_fp 11 53) x0_ack!4149))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4148) ((_ to_fp 11 53) x2_ack!4146))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4147) ((_ to_fp 11 53) b_ack!4148))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4147) ((_ to_fp 11 53) x0_ack!4149))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4147) ((_ to_fp 11 53) x1_ack!4145))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4148) ((_ to_fp 11 53) x0_ack!4149))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4148) ((_ to_fp 11 53) x1_ack!4145))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4145)
                    ((_ to_fp 11 53) x0_ack!4149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!4148 a_ack!4147))

(check-sat)
(exit)
