(declare-fun b_ack!2366 () (_ BitVec 64))
(declare-fun a_ack!2367 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2367) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2366)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!2367)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2367) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2367) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2366) ((_ to_fp 11 53) #x4014000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2366))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!2366)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2366))
               (CF_log b_ack!2366))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2366)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                           (CF_log b_ack!2366)))))
  (FPCHECK_FSUB_OVERFLOW #x3fea51a6625307d3 a!1)))

(check-sat)
(exit)
