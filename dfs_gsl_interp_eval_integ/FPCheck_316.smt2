(declare-fun x1_ack!3826 () (_ BitVec 64))
(declare-fun x0_ack!3830 () (_ BitVec 64))
(declare-fun x2_ack!3827 () (_ BitVec 64))
(declare-fun b_ack!3829 () (_ BitVec 64))
(declare-fun a_ack!3828 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3830) ((_ to_fp 11 53) x1_ack!3826)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3826) ((_ to_fp 11 53) x2_ack!3827)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3826)
                       ((_ to_fp 11 53) x0_ack!3830))
               ((_ to_fp 11 53) x0_ack!3830))
       ((_ to_fp 11 53) x1_ack!3826)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3826)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3826)
                       ((_ to_fp 11 53) x0_ack!3830)))
       ((_ to_fp 11 53) x0_ack!3830)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3827)
                       ((_ to_fp 11 53) x1_ack!3826))
               ((_ to_fp 11 53) x1_ack!3826))
       ((_ to_fp 11 53) x2_ack!3827)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3827)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3827)
                       ((_ to_fp 11 53) x1_ack!3826)))
       ((_ to_fp 11 53) x1_ack!3826)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3826)
                    ((_ to_fp 11 53) x0_ack!3830))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3827)
                    ((_ to_fp 11 53) x1_ack!3826))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3828) ((_ to_fp 11 53) b_ack!3829))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3828) ((_ to_fp 11 53) x0_ack!3830))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3829) ((_ to_fp 11 53) x2_ack!3827))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3828) ((_ to_fp 11 53) b_ack!3829))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3828) ((_ to_fp 11 53) x0_ack!3830))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3828) ((_ to_fp 11 53) x1_ack!3826))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3829) ((_ to_fp 11 53) x0_ack!3830))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3829) ((_ to_fp 11 53) x1_ack!3826))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3826)
                    ((_ to_fp 11 53) x0_ack!3830))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3828)
          ((_ to_fp 11 53) x0_ack!3830))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3829)
          ((_ to_fp 11 53) x0_ack!3830))))

(check-sat)
(exit)
