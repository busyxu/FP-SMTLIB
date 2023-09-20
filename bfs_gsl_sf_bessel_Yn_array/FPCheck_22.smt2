(declare-fun a_ack!134 () (_ BitVec 32))
(declare-fun b_ack!132 () (_ BitVec 32))
(declare-fun c_ack!133 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!134 #x00000000)))
(assert (not (bvslt b_ack!132 a_ack!134)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!133) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!134 #x00000000)))
(assert (= #x00000000 a_ack!134))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!133) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!133) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!133) ((_ to_fp 11 53) #x4330000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!133)
                                   ((_ to_fp 11 53) c_ack!133)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!1)
            ((_ to_fp 11 53) #xbff0000000000000))
    #x3ff0000000000000)))

(check-sat)
(exit)
