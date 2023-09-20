(declare-fun x1_ack!2354 () (_ BitVec 64))
(declare-fun x0_ack!2358 () (_ BitVec 64))
(declare-fun x2_ack!2355 () (_ BitVec 64))
(declare-fun b_ack!2357 () (_ BitVec 64))
(declare-fun a_ack!2356 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2358) ((_ to_fp 11 53) x1_ack!2354)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2354) ((_ to_fp 11 53) x2_ack!2355)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2354)
                       ((_ to_fp 11 53) x0_ack!2358))
               ((_ to_fp 11 53) x0_ack!2358))
       ((_ to_fp 11 53) x1_ack!2354)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2354)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2354)
                       ((_ to_fp 11 53) x0_ack!2358)))
       ((_ to_fp 11 53) x0_ack!2358)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2355)
                       ((_ to_fp 11 53) x1_ack!2354))
               ((_ to_fp 11 53) x1_ack!2354))
       ((_ to_fp 11 53) x2_ack!2355)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2355)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2355)
                       ((_ to_fp 11 53) x1_ack!2354)))
       ((_ to_fp 11 53) x1_ack!2354)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2354)
                    ((_ to_fp 11 53) x0_ack!2358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2355)
                    ((_ to_fp 11 53) x1_ack!2354))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) b_ack!2357))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) x0_ack!2358))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) x2_ack!2355))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) b_ack!2357))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) x0_ack!2358))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) x1_ack!2354)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2354) ((_ to_fp 11 53) a_ack!2356))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) x1_ack!2354))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) x2_ack!2355))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2355)
                    ((_ to_fp 11 53) x1_ack!2354))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!2355)
          ((_ to_fp 11 53) x1_ack!2354))))

(check-sat)
(exit)
