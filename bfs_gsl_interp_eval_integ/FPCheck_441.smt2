(declare-fun x1_ack!5578 () (_ BitVec 64))
(declare-fun x0_ack!5582 () (_ BitVec 64))
(declare-fun x2_ack!5579 () (_ BitVec 64))
(declare-fun b_ack!5581 () (_ BitVec 64))
(declare-fun a_ack!5580 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5582) ((_ to_fp 11 53) x1_ack!5578)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5578) ((_ to_fp 11 53) x2_ack!5579)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5578)
                       ((_ to_fp 11 53) x0_ack!5582))
               ((_ to_fp 11 53) x0_ack!5582))
       ((_ to_fp 11 53) x1_ack!5578)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5578)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5578)
                       ((_ to_fp 11 53) x0_ack!5582)))
       ((_ to_fp 11 53) x0_ack!5582)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5579)
                       ((_ to_fp 11 53) x1_ack!5578))
               ((_ to_fp 11 53) x1_ack!5578))
       ((_ to_fp 11 53) x2_ack!5579)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5579)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5579)
                       ((_ to_fp 11 53) x1_ack!5578)))
       ((_ to_fp 11 53) x1_ack!5578)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5578)
                    ((_ to_fp 11 53) x0_ack!5582))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5579)
                    ((_ to_fp 11 53) x1_ack!5578))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5580) ((_ to_fp 11 53) b_ack!5581))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5580) ((_ to_fp 11 53) x0_ack!5582))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5581) ((_ to_fp 11 53) x2_ack!5579))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5580) ((_ to_fp 11 53) b_ack!5581))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5580) ((_ to_fp 11 53) x0_ack!5582))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5580) ((_ to_fp 11 53) x1_ack!5578))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5581) ((_ to_fp 11 53) x0_ack!5582))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5581) ((_ to_fp 11 53) x1_ack!5578)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5578) ((_ to_fp 11 53) b_ack!5581))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5578)
                    ((_ to_fp 11 53) x0_ack!5582))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5578)
          ((_ to_fp 11 53) x0_ack!5582))))

(check-sat)
(exit)
