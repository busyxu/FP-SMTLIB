(declare-fun x1_ack!2992 () (_ BitVec 64))
(declare-fun x0_ack!2996 () (_ BitVec 64))
(declare-fun x2_ack!2993 () (_ BitVec 64))
(declare-fun b_ack!2995 () (_ BitVec 64))
(declare-fun a_ack!2994 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2996) ((_ to_fp 11 53) x1_ack!2992)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2992) ((_ to_fp 11 53) x2_ack!2993)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2992)
                       ((_ to_fp 11 53) x0_ack!2996))
               ((_ to_fp 11 53) x0_ack!2996))
       ((_ to_fp 11 53) x1_ack!2992)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2992)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2992)
                       ((_ to_fp 11 53) x0_ack!2996)))
       ((_ to_fp 11 53) x0_ack!2996)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2993)
                       ((_ to_fp 11 53) x1_ack!2992))
               ((_ to_fp 11 53) x1_ack!2992))
       ((_ to_fp 11 53) x2_ack!2993)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2993)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2993)
                       ((_ to_fp 11 53) x1_ack!2992)))
       ((_ to_fp 11 53) x1_ack!2992)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2992)
                    ((_ to_fp 11 53) x0_ack!2996))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2993)
                    ((_ to_fp 11 53) x1_ack!2992))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2994) ((_ to_fp 11 53) b_ack!2995))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2994) ((_ to_fp 11 53) x0_ack!2996))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2995) ((_ to_fp 11 53) x2_ack!2993))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2994) ((_ to_fp 11 53) b_ack!2995))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2994) ((_ to_fp 11 53) x0_ack!2996))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2994) ((_ to_fp 11 53) x1_ack!2992)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2992) ((_ to_fp 11 53) a_ack!2994))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2995) ((_ to_fp 11 53) x1_ack!2992))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2995) ((_ to_fp 11 53) x2_ack!2993))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2993)
                    ((_ to_fp 11 53) x1_ack!2992))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2994)
          ((_ to_fp 11 53) x1_ack!2992))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2994)
          ((_ to_fp 11 53) x1_ack!2992))))

(check-sat)
(exit)
