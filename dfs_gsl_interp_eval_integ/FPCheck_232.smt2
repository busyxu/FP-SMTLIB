(declare-fun x1_ack!2710 () (_ BitVec 64))
(declare-fun x0_ack!2714 () (_ BitVec 64))
(declare-fun x2_ack!2711 () (_ BitVec 64))
(declare-fun b_ack!2713 () (_ BitVec 64))
(declare-fun a_ack!2712 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2714) ((_ to_fp 11 53) x1_ack!2710)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2710) ((_ to_fp 11 53) x2_ack!2711)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2710)
                       ((_ to_fp 11 53) x0_ack!2714))
               ((_ to_fp 11 53) x0_ack!2714))
       ((_ to_fp 11 53) x1_ack!2710)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2710)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2710)
                       ((_ to_fp 11 53) x0_ack!2714)))
       ((_ to_fp 11 53) x0_ack!2714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2711)
                       ((_ to_fp 11 53) x1_ack!2710))
               ((_ to_fp 11 53) x1_ack!2710))
       ((_ to_fp 11 53) x2_ack!2711)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2711)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2711)
                       ((_ to_fp 11 53) x1_ack!2710)))
       ((_ to_fp 11 53) x1_ack!2710)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2710)
                    ((_ to_fp 11 53) x0_ack!2714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2711)
                    ((_ to_fp 11 53) x1_ack!2710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2712) ((_ to_fp 11 53) b_ack!2713))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2712) ((_ to_fp 11 53) x0_ack!2714))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2713) ((_ to_fp 11 53) x2_ack!2711))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2712) ((_ to_fp 11 53) b_ack!2713))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2712) ((_ to_fp 11 53) x0_ack!2714))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2712) ((_ to_fp 11 53) x1_ack!2710))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2713) ((_ to_fp 11 53) x0_ack!2714))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2713) ((_ to_fp 11 53) x1_ack!2710)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2710) ((_ to_fp 11 53) b_ack!2713))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2710)
                    ((_ to_fp 11 53) x0_ack!2714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2711)
                    ((_ to_fp 11 53) x1_ack!2710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2710)
          ((_ to_fp 11 53) x1_ack!2710))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2710)
          ((_ to_fp 11 53) x1_ack!2710))))

(check-sat)
(exit)
