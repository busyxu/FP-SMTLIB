(declare-fun x1_ack!4212 () (_ BitVec 64))
(declare-fun x0_ack!4216 () (_ BitVec 64))
(declare-fun x2_ack!4213 () (_ BitVec 64))
(declare-fun b_ack!4215 () (_ BitVec 64))
(declare-fun a_ack!4214 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4216) ((_ to_fp 11 53) x1_ack!4212)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4212) ((_ to_fp 11 53) x2_ack!4213)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4212)
                       ((_ to_fp 11 53) x0_ack!4216))
               ((_ to_fp 11 53) x0_ack!4216))
       ((_ to_fp 11 53) x1_ack!4212)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4212)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4212)
                       ((_ to_fp 11 53) x0_ack!4216)))
       ((_ to_fp 11 53) x0_ack!4216)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4213)
                       ((_ to_fp 11 53) x1_ack!4212))
               ((_ to_fp 11 53) x1_ack!4212))
       ((_ to_fp 11 53) x2_ack!4213)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4213)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4213)
                       ((_ to_fp 11 53) x1_ack!4212)))
       ((_ to_fp 11 53) x1_ack!4212)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4212)
                    ((_ to_fp 11 53) x0_ack!4216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4213)
                    ((_ to_fp 11 53) x1_ack!4212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4214) ((_ to_fp 11 53) b_ack!4215))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4214) ((_ to_fp 11 53) x0_ack!4216))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4215) ((_ to_fp 11 53) x2_ack!4213))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4214) ((_ to_fp 11 53) b_ack!4215))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4214) ((_ to_fp 11 53) x0_ack!4216))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4214) ((_ to_fp 11 53) x1_ack!4212))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4215) ((_ to_fp 11 53) x0_ack!4216))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4215) ((_ to_fp 11 53) x1_ack!4212))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4212)
                    ((_ to_fp 11 53) x0_ack!4216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!4215 x0_ack!4216))

(check-sat)
(exit)
