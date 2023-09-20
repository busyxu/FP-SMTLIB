(declare-fun b_ack!1066 () (_ BitVec 64))
(declare-fun a_ack!1067 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1066) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1066) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1067) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1067) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1066) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1067))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!1066))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!1066)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!1066))
               (CF_log b_ack!1066))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1066))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1066)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (FPCHECK_FSUB_OVERFLOW #x3fea51a6625307d3 a!1)))

(check-sat)
(exit)
