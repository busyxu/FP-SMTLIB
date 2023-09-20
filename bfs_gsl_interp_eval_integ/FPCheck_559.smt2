(declare-fun x1_ack!7053 () (_ BitVec 64))
(declare-fun x0_ack!7057 () (_ BitVec 64))
(declare-fun x2_ack!7054 () (_ BitVec 64))
(declare-fun b_ack!7056 () (_ BitVec 64))
(declare-fun a_ack!7055 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7057) ((_ to_fp 11 53) x1_ack!7053)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7053) ((_ to_fp 11 53) x2_ack!7054)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7053)
                       ((_ to_fp 11 53) x0_ack!7057))
               ((_ to_fp 11 53) x0_ack!7057))
       ((_ to_fp 11 53) x1_ack!7053)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7053)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7053)
                       ((_ to_fp 11 53) x0_ack!7057)))
       ((_ to_fp 11 53) x0_ack!7057)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7054)
                       ((_ to_fp 11 53) x1_ack!7053))
               ((_ to_fp 11 53) x1_ack!7053))
       ((_ to_fp 11 53) x2_ack!7054)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7054)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7054)
                       ((_ to_fp 11 53) x1_ack!7053)))
       ((_ to_fp 11 53) x1_ack!7053)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7053)
                    ((_ to_fp 11 53) x0_ack!7057))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7054)
                    ((_ to_fp 11 53) x1_ack!7053))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7055) ((_ to_fp 11 53) b_ack!7056))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7055) ((_ to_fp 11 53) x0_ack!7057))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7056) ((_ to_fp 11 53) x2_ack!7054))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7055) ((_ to_fp 11 53) b_ack!7056))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7055) ((_ to_fp 11 53) x0_ack!7057))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7055) ((_ to_fp 11 53) x1_ack!7053))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7056) ((_ to_fp 11 53) x0_ack!7057))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7056) ((_ to_fp 11 53) x1_ack!7053)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7053) ((_ to_fp 11 53) b_ack!7056))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7053)
                    ((_ to_fp 11 53) x0_ack!7057))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7054)
                    ((_ to_fp 11 53) x1_ack!7053))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!7056 x1_ack!7053))

(check-sat)
(exit)
