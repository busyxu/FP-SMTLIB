(declare-fun x1_ack!3721 () (_ BitVec 64))
(declare-fun x0_ack!3725 () (_ BitVec 64))
(declare-fun x2_ack!3722 () (_ BitVec 64))
(declare-fun b_ack!3724 () (_ BitVec 64))
(declare-fun a_ack!3723 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3725) ((_ to_fp 11 53) x1_ack!3721)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3721) ((_ to_fp 11 53) x2_ack!3722)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3721)
                       ((_ to_fp 11 53) x0_ack!3725))
               ((_ to_fp 11 53) x0_ack!3725))
       ((_ to_fp 11 53) x1_ack!3721)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3721)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3721)
                       ((_ to_fp 11 53) x0_ack!3725)))
       ((_ to_fp 11 53) x0_ack!3725)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3722)
                       ((_ to_fp 11 53) x1_ack!3721))
               ((_ to_fp 11 53) x1_ack!3721))
       ((_ to_fp 11 53) x2_ack!3722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3722)
                       ((_ to_fp 11 53) x1_ack!3721)))
       ((_ to_fp 11 53) x1_ack!3721)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3721)
                    ((_ to_fp 11 53) x0_ack!3725))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3722)
                    ((_ to_fp 11 53) x1_ack!3721))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3723) ((_ to_fp 11 53) b_ack!3724))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3723) ((_ to_fp 11 53) x0_ack!3725))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3724) ((_ to_fp 11 53) x2_ack!3722))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3723) ((_ to_fp 11 53) b_ack!3724))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3723) ((_ to_fp 11 53) x0_ack!3725))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3723) ((_ to_fp 11 53) x1_ack!3721))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3724) ((_ to_fp 11 53) x0_ack!3725))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3724) ((_ to_fp 11 53) x1_ack!3721))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3721)
                    ((_ to_fp 11 53) x0_ack!3725))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3723)
          ((_ to_fp 11 53) x0_ack!3725))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3723)
          ((_ to_fp 11 53) x0_ack!3725))))

(check-sat)
(exit)
