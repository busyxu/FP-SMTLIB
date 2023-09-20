(declare-fun x1_ack!4423 () (_ BitVec 64))
(declare-fun x0_ack!4427 () (_ BitVec 64))
(declare-fun x2_ack!4424 () (_ BitVec 64))
(declare-fun b_ack!4426 () (_ BitVec 64))
(declare-fun a_ack!4425 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4427) ((_ to_fp 11 53) x1_ack!4423)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4423) ((_ to_fp 11 53) x2_ack!4424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4423)
                       ((_ to_fp 11 53) x0_ack!4427))
               ((_ to_fp 11 53) x0_ack!4427))
       ((_ to_fp 11 53) x1_ack!4423)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4423)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4423)
                       ((_ to_fp 11 53) x0_ack!4427)))
       ((_ to_fp 11 53) x0_ack!4427)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4424)
                       ((_ to_fp 11 53) x1_ack!4423))
               ((_ to_fp 11 53) x1_ack!4423))
       ((_ to_fp 11 53) x2_ack!4424)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4424)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4424)
                       ((_ to_fp 11 53) x1_ack!4423)))
       ((_ to_fp 11 53) x1_ack!4423)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4423)
                    ((_ to_fp 11 53) x0_ack!4427))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4424)
                    ((_ to_fp 11 53) x1_ack!4423))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4425) ((_ to_fp 11 53) b_ack!4426))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4425) ((_ to_fp 11 53) x0_ack!4427))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4426) ((_ to_fp 11 53) x2_ack!4424))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4425) ((_ to_fp 11 53) b_ack!4426))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4425) ((_ to_fp 11 53) x0_ack!4427))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4425) ((_ to_fp 11 53) x1_ack!4423)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4423) ((_ to_fp 11 53) a_ack!4425))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4426) ((_ to_fp 11 53) x1_ack!4423))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4426) ((_ to_fp 11 53) x2_ack!4424)))
(assert (FPCHECK_FSUB_ACCURACY x2_ack!4424 x1_ack!4423))

(check-sat)
(exit)
