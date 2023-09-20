(declare-fun c_ack!1110 () (_ BitVec 64))
(declare-fun a_ack!1111 () (_ BitVec 32))
(declare-fun b_ack!1109 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1110) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1111 #xffffffff)))
(assert (= #xffffffff a_ack!1111))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1110) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1109) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1110)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!1110))))))
  (not (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1110)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1110)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
