(declare-fun b_ack!109 () (_ BitVec 32))
(declare-fun a_ack!111 () (_ BitVec 32))
(declare-fun c_ack!110 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!111 b_ack!109))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!111 b_ack!109))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt b_ack!109 #x00000000)))
(assert (not (bvslt a_ack!111 b_ack!109)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!110) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!111))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #xc085d32bdd7abcd2))))))
(assert (not (= #x00000000 b_ack!109)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 c_ack!110))

(check-sat)
(exit)
