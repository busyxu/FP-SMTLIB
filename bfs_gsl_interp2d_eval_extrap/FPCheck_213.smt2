(declare-fun x1_ack!2190 () (_ BitVec 64))
(declare-fun x0_ack!2194 () (_ BitVec 64))
(declare-fun y0_ack!2191 () (_ BitVec 64))
(declare-fun x_ack!2192 () (_ BitVec 64))
(declare-fun y_ack!2193 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2194) ((_ to_fp 11 53) x1_ack!2190))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2191) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2192) ((_ to_fp 11 53) x0_ack!2194))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2192) ((_ to_fp 11 53) x1_ack!2190)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2193) ((_ to_fp 11 53) y0_ack!2191))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2193) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2190)
                       ((_ to_fp 11 53) x0_ack!2194))
               ((_ to_fp 11 53) x0_ack!2194))
       ((_ to_fp 11 53) x1_ack!2190)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2190)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2190)
                       ((_ to_fp 11 53) x0_ack!2194)))
       ((_ to_fp 11 53) x0_ack!2194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2193)
                       ((_ to_fp 11 53) y0_ack!2191))
               ((_ to_fp 11 53) y0_ack!2191))
       ((_ to_fp 11 53) y_ack!2193)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2193)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2193)
                       ((_ to_fp 11 53) y0_ack!2191)))
       ((_ to_fp 11 53) y0_ack!2191)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2192)
                  ((_ to_fp 11 53) x0_ack!2194))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2190)
                  ((_ to_fp 11 53) x0_ack!2194)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2193)
                  ((_ to_fp 11 53) y0_ack!2191))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2191)))))

(check-sat)
(exit)
