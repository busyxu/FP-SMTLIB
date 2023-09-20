(declare-fun x1_ack!5904 () (_ BitVec 64))
(declare-fun x0_ack!5908 () (_ BitVec 64))
(declare-fun x2_ack!5905 () (_ BitVec 64))
(declare-fun b_ack!5907 () (_ BitVec 64))
(declare-fun a_ack!5906 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5908) ((_ to_fp 11 53) x1_ack!5904)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5904) ((_ to_fp 11 53) x2_ack!5905)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5904)
                       ((_ to_fp 11 53) x0_ack!5908))
               ((_ to_fp 11 53) x0_ack!5908))
       ((_ to_fp 11 53) x1_ack!5904)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5904)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5904)
                       ((_ to_fp 11 53) x0_ack!5908)))
       ((_ to_fp 11 53) x0_ack!5908)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5905)
                       ((_ to_fp 11 53) x1_ack!5904))
               ((_ to_fp 11 53) x1_ack!5904))
       ((_ to_fp 11 53) x2_ack!5905)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5905)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5905)
                       ((_ to_fp 11 53) x1_ack!5904)))
       ((_ to_fp 11 53) x1_ack!5904)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5904)
                    ((_ to_fp 11 53) x0_ack!5908))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5905)
                    ((_ to_fp 11 53) x1_ack!5904))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5906) ((_ to_fp 11 53) b_ack!5907))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5906) ((_ to_fp 11 53) x0_ack!5908))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5907) ((_ to_fp 11 53) x2_ack!5905))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5906) ((_ to_fp 11 53) b_ack!5907))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5906) ((_ to_fp 11 53) x0_ack!5908))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5906) ((_ to_fp 11 53) x1_ack!5904))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5907) ((_ to_fp 11 53) x0_ack!5908))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5907) ((_ to_fp 11 53) x1_ack!5904)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5904) ((_ to_fp 11 53) b_ack!5907))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5904)
                    ((_ to_fp 11 53) x0_ack!5908))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5904)
          ((_ to_fp 11 53) x0_ack!5908))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5904)
          ((_ to_fp 11 53) x0_ack!5908))))

(check-sat)
(exit)
