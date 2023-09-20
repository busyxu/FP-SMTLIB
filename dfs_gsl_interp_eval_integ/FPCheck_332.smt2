(declare-fun x1_ack!4017 () (_ BitVec 64))
(declare-fun x0_ack!4021 () (_ BitVec 64))
(declare-fun x2_ack!4018 () (_ BitVec 64))
(declare-fun b_ack!4020 () (_ BitVec 64))
(declare-fun a_ack!4019 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4021) ((_ to_fp 11 53) x1_ack!4017)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4017) ((_ to_fp 11 53) x2_ack!4018)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4017)
                       ((_ to_fp 11 53) x0_ack!4021))
               ((_ to_fp 11 53) x0_ack!4021))
       ((_ to_fp 11 53) x1_ack!4017)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4017)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4017)
                       ((_ to_fp 11 53) x0_ack!4021)))
       ((_ to_fp 11 53) x0_ack!4021)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4018)
                       ((_ to_fp 11 53) x1_ack!4017))
               ((_ to_fp 11 53) x1_ack!4017))
       ((_ to_fp 11 53) x2_ack!4018)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4018)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4018)
                       ((_ to_fp 11 53) x1_ack!4017)))
       ((_ to_fp 11 53) x1_ack!4017)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4017)
                    ((_ to_fp 11 53) x0_ack!4021))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4018)
                    ((_ to_fp 11 53) x1_ack!4017))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4019) ((_ to_fp 11 53) b_ack!4020))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4019) ((_ to_fp 11 53) x0_ack!4021))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4020) ((_ to_fp 11 53) x2_ack!4018))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4019) ((_ to_fp 11 53) b_ack!4020))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4019) ((_ to_fp 11 53) x0_ack!4021))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4019) ((_ to_fp 11 53) x1_ack!4017))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4020) ((_ to_fp 11 53) x0_ack!4021))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4020) ((_ to_fp 11 53) x1_ack!4017))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4017)
                    ((_ to_fp 11 53) x0_ack!4021))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4020)
          ((_ to_fp 11 53) x0_ack!4021))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4020)
          ((_ to_fp 11 53) x0_ack!4021))))

(check-sat)
(exit)
