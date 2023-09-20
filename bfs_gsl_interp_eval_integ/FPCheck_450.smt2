(declare-fun x1_ack!5703 () (_ BitVec 64))
(declare-fun x0_ack!5707 () (_ BitVec 64))
(declare-fun x2_ack!5704 () (_ BitVec 64))
(declare-fun b_ack!5706 () (_ BitVec 64))
(declare-fun a_ack!5705 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5707) ((_ to_fp 11 53) x1_ack!5703)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5703) ((_ to_fp 11 53) x2_ack!5704)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5703)
                       ((_ to_fp 11 53) x0_ack!5707))
               ((_ to_fp 11 53) x0_ack!5707))
       ((_ to_fp 11 53) x1_ack!5703)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5703)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5703)
                       ((_ to_fp 11 53) x0_ack!5707)))
       ((_ to_fp 11 53) x0_ack!5707)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5704)
                       ((_ to_fp 11 53) x1_ack!5703))
               ((_ to_fp 11 53) x1_ack!5703))
       ((_ to_fp 11 53) x2_ack!5704)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5704)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5704)
                       ((_ to_fp 11 53) x1_ack!5703)))
       ((_ to_fp 11 53) x1_ack!5703)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5703)
                    ((_ to_fp 11 53) x0_ack!5707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5704)
                    ((_ to_fp 11 53) x1_ack!5703))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5705) ((_ to_fp 11 53) b_ack!5706))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5705) ((_ to_fp 11 53) x0_ack!5707))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5706) ((_ to_fp 11 53) x2_ack!5704))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5705) ((_ to_fp 11 53) b_ack!5706))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5705) ((_ to_fp 11 53) x0_ack!5707))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5705) ((_ to_fp 11 53) x1_ack!5703))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5706) ((_ to_fp 11 53) x0_ack!5707))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5706) ((_ to_fp 11 53) x1_ack!5703)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5703) ((_ to_fp 11 53) b_ack!5706))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5703)
                    ((_ to_fp 11 53) x0_ack!5707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!5705 x0_ack!5707))

(check-sat)
(exit)
