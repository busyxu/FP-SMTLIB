(declare-fun c_ack!8232 () (_ BitVec 64))
(declare-fun a_ack!8233 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!8231 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!8232) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!8232) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!8233) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) a_ack!8233) (CF_floor a_ack!8233))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!8231) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!8233)
                    ((_ to_fp 11 53) b_ack!8231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8232) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8232) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!8233) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!8231))
               ((_ to_fp 11 53) b_ack!8231))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!8231)))
       ((_ to_fp 11 53) b_ack!8231)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!8233) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!8231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!8233)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY c_ack!8232 #x3ff0000000000000))

(check-sat)
(exit)
