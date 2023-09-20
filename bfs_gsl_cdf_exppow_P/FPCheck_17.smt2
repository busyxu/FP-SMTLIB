(declare-fun a_ack!112 () (_ BitVec 64))
(declare-fun x_ack!114 () (_ BitVec 64))
(declare-fun b_ack!113 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!114)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!112)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!114)
               ((_ to_fp 11 53) a_ack!112))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!114)
                           ((_ to_fp 11 53) a_ack!112)))))
  (FPCHECK_FINVALID_POW a!1 a!1)))

(check-sat)
(exit)
