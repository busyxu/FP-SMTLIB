(declare-fun x1_ack!393 () (_ BitVec 64))
(declare-fun x0_ack!397 () (_ BitVec 64))
(declare-fun x2_ack!394 () (_ BitVec 64))
(declare-fun b_ack!396 () (_ BitVec 64))
(declare-fun a_ack!395 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!397) ((_ to_fp 11 53) x1_ack!393)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!393) ((_ to_fp 11 53) x2_ack!394)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!393)
                       ((_ to_fp 11 53) x0_ack!397))
               ((_ to_fp 11 53) x0_ack!397))
       ((_ to_fp 11 53) x1_ack!393)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!393)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!393)
                       ((_ to_fp 11 53) x0_ack!397)))
       ((_ to_fp 11 53) x0_ack!397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!394)
                       ((_ to_fp 11 53) x1_ack!393))
               ((_ to_fp 11 53) x1_ack!393))
       ((_ to_fp 11 53) x2_ack!394)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!394)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!394)
                       ((_ to_fp 11 53) x1_ack!393)))
       ((_ to_fp 11 53) x1_ack!393)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!393)
                    ((_ to_fp 11 53) x0_ack!397))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!394)
                    ((_ to_fp 11 53) x1_ack!393))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!395) ((_ to_fp 11 53) b_ack!396))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!395) ((_ to_fp 11 53) x0_ack!397))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) x2_ack!394))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!395) ((_ to_fp 11 53) b_ack!396))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!395) ((_ to_fp 11 53) x0_ack!397))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!395) ((_ to_fp 11 53) x1_ack!393))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) x0_ack!397)))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!393 x0_ack!397))

(check-sat)
(exit)
