(declare-fun c_ack!1368 () (_ BitVec 64))
(declare-fun a_ack!1369 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1367 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1368) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1369 #xffffffff)))
(assert (= #xffffffff a_ack!1369))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1368) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1368) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1368) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1367)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1368)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!1368))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3fe9884533d43651))
    #x3ff50ea39fcbf166))))

(check-sat)
(exit)
