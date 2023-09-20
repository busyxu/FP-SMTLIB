(declare-fun x1_ack!782 () (_ BitVec 64))
(declare-fun x0_ack!786 () (_ BitVec 64))
(declare-fun x2_ack!783 () (_ BitVec 64))
(declare-fun b_ack!785 () (_ BitVec 64))
(declare-fun a_ack!784 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!786) ((_ to_fp 11 53) x1_ack!782)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!782) ((_ to_fp 11 53) x2_ack!783)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!782)
                       ((_ to_fp 11 53) x0_ack!786))
               ((_ to_fp 11 53) x0_ack!786))
       ((_ to_fp 11 53) x1_ack!782)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!782)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!782)
                       ((_ to_fp 11 53) x0_ack!786)))
       ((_ to_fp 11 53) x0_ack!786)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!783)
                       ((_ to_fp 11 53) x1_ack!782))
               ((_ to_fp 11 53) x1_ack!782))
       ((_ to_fp 11 53) x2_ack!783)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!783)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!783)
                       ((_ to_fp 11 53) x1_ack!782)))
       ((_ to_fp 11 53) x1_ack!782)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!782)
                    ((_ to_fp 11 53) x0_ack!786))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!783)
                    ((_ to_fp 11 53) x1_ack!782))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!784) ((_ to_fp 11 53) b_ack!785))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!784) ((_ to_fp 11 53) x0_ack!786))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!785) ((_ to_fp 11 53) x2_ack!783))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!784) ((_ to_fp 11 53) b_ack!785))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!784) ((_ to_fp 11 53) x0_ack!786))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!784) ((_ to_fp 11 53) x1_ack!782))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!785) ((_ to_fp 11 53) x0_ack!786))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!785) ((_ to_fp 11 53) x1_ack!782)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!782) ((_ to_fp 11 53) b_ack!785))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!782)
                    ((_ to_fp 11 53) x0_ack!786))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!782)
          ((_ to_fp 11 53) x0_ack!786))))

(check-sat)
(exit)
