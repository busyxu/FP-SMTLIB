(declare-fun b_ack!1669 () (_ BitVec 64))
(declare-fun a_ack!1670 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1669) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1670))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1670)
               (CF_floor a_ack!1670))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1670)
                    (CF_floor a_ack!1670))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1670)
                    (CF_floor a_ack!1670))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) b_ack!1669)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1670)
                                   (CF_floor a_ack!1670))))))
  (not a!1)))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1670)
                     (CF_floor a_ack!1670))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1670)
                    (CF_floor a_ack!1670))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1670)
                     (CF_floor a_ack!1670))
             ((_ to_fp 11 53) b_ack!1669))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1670)
          (CF_floor a_ack!1670))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1670)
          (CF_floor a_ack!1670))))

(check-sat)
(exit)
