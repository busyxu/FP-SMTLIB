(declare-fun a_ack!1051 () (_ BitVec 64))
(declare-fun b_ack!1050 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1051)
                     ((_ to_fp 11 53) b_ack!1050))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1050) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1050))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1051))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1051) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1051)
                       ((_ to_fp 11 53) b_ack!1050))
               ((_ to_fp 11 53) a_ack!1051))
       ((_ to_fp 11 53) b_ack!1050)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1051)
                       ((_ to_fp 11 53) b_ack!1050))
               ((_ to_fp 11 53) b_ack!1050))
       ((_ to_fp 11 53) a_ack!1051)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1051)
                    ((_ to_fp 11 53) b_ack!1050))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1051)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1051)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1051) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #xc06613ae51a32f5d
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1051)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
