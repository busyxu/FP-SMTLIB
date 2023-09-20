(declare-fun x1_ack!3669 () (_ BitVec 64))
(declare-fun x0_ack!3673 () (_ BitVec 64))
(declare-fun x2_ack!3670 () (_ BitVec 64))
(declare-fun b_ack!3672 () (_ BitVec 64))
(declare-fun a_ack!3671 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3673) ((_ to_fp 11 53) x1_ack!3669)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3669) ((_ to_fp 11 53) x2_ack!3670)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3669)
                       ((_ to_fp 11 53) x0_ack!3673))
               ((_ to_fp 11 53) x0_ack!3673))
       ((_ to_fp 11 53) x1_ack!3669)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3669)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3669)
                       ((_ to_fp 11 53) x0_ack!3673)))
       ((_ to_fp 11 53) x0_ack!3673)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3670)
                       ((_ to_fp 11 53) x1_ack!3669))
               ((_ to_fp 11 53) x1_ack!3669))
       ((_ to_fp 11 53) x2_ack!3670)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3670)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3670)
                       ((_ to_fp 11 53) x1_ack!3669)))
       ((_ to_fp 11 53) x1_ack!3669)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3669)
                    ((_ to_fp 11 53) x0_ack!3673))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3670)
                    ((_ to_fp 11 53) x1_ack!3669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3671) ((_ to_fp 11 53) b_ack!3672))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3671) ((_ to_fp 11 53) x0_ack!3673))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3672) ((_ to_fp 11 53) x2_ack!3670))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3671) ((_ to_fp 11 53) b_ack!3672))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3671) ((_ to_fp 11 53) x0_ack!3673))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3671) ((_ to_fp 11 53) x1_ack!3669)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3669) ((_ to_fp 11 53) a_ack!3671))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3672) ((_ to_fp 11 53) x1_ack!3669))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3672) ((_ to_fp 11 53) x2_ack!3670)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3670)
                    ((_ to_fp 11 53) x1_ack!3669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!3670)
          ((_ to_fp 11 53) x1_ack!3669))))

(check-sat)
(exit)
