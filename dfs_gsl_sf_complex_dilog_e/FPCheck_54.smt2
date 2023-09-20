(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!222 () (_ BitVec 64))
(declare-fun a_ack!223 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!223)
               (CF_sin b_ack!222))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!223)
                     (CF_cos b_ack!222))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!223)
                (CF_cos b_ack!222))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!223)
                    (CF_cos b_ack!222))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!223)
                    (CF_cos b_ack!222))
            ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!223)
                    (CF_cos b_ack!222))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!223)
                    (CF_cos b_ack!222))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!223)
                    (CF_cos b_ack!222))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!223)
               (CF_cos b_ack!222))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!223)
                  (CF_cos b_ack!222))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!223)
                  (CF_cos b_ack!222)))
  #x4028000000000000))

(check-sat)
(exit)
