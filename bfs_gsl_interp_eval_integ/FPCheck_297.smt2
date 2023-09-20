(declare-fun x1_ack!3659 () (_ BitVec 64))
(declare-fun x0_ack!3663 () (_ BitVec 64))
(declare-fun x2_ack!3660 () (_ BitVec 64))
(declare-fun b_ack!3662 () (_ BitVec 64))
(declare-fun a_ack!3661 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3663) ((_ to_fp 11 53) x1_ack!3659)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3659) ((_ to_fp 11 53) x2_ack!3660)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3659)
                       ((_ to_fp 11 53) x0_ack!3663))
               ((_ to_fp 11 53) x0_ack!3663))
       ((_ to_fp 11 53) x1_ack!3659)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3659)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3659)
                       ((_ to_fp 11 53) x0_ack!3663)))
       ((_ to_fp 11 53) x0_ack!3663)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3660)
                       ((_ to_fp 11 53) x1_ack!3659))
               ((_ to_fp 11 53) x1_ack!3659))
       ((_ to_fp 11 53) x2_ack!3660)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3660)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3660)
                       ((_ to_fp 11 53) x1_ack!3659)))
       ((_ to_fp 11 53) x1_ack!3659)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3659)
                    ((_ to_fp 11 53) x0_ack!3663))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3660)
                    ((_ to_fp 11 53) x1_ack!3659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3661) ((_ to_fp 11 53) b_ack!3662))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3661) ((_ to_fp 11 53) x0_ack!3663))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3662) ((_ to_fp 11 53) x2_ack!3660))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3661) ((_ to_fp 11 53) b_ack!3662))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3661) ((_ to_fp 11 53) x0_ack!3663))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3661) ((_ to_fp 11 53) x1_ack!3659)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3659) ((_ to_fp 11 53) a_ack!3661))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3662) ((_ to_fp 11 53) x1_ack!3659))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3662) ((_ to_fp 11 53) x2_ack!3660)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3660)
                    ((_ to_fp 11 53) x1_ack!3659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!3660)
          ((_ to_fp 11 53) x1_ack!3659))))

(check-sat)
(exit)
