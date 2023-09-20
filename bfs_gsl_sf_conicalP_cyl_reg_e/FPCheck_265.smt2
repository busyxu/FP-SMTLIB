(declare-fun c_ack!1128 () (_ BitVec 64))
(declare-fun a_ack!1129 () (_ BitVec 32))
(declare-fun b_ack!1127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1128) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1129 #xffffffff)))
(assert (= #xffffffff a_ack!1129))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1128) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1127) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1128) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1128) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1128)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1128))))))
  (not (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fd4000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1128)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
