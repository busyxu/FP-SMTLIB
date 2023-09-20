(declare-fun b_ack!465 () (_ BitVec 32))
(declare-fun a_ack!467 () (_ BitVec 32))
(declare-fun c_ack!466 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!465 #x00000000)))
(assert (not (bvslt a_ack!467 b_ack!465)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!465)))
(assert (= #x00000001 b_ack!465))
(assert (not (bvslt b_ack!465 #x00000000)))
(assert (not (bvslt a_ack!467 b_ack!465)))
(assert (not (= #x00000000 b_ack!465)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!467 b_ack!465))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!467 b_ack!465))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!467))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    a!1)
            ((_ to_fp 11 53) #x0000000000000000))
    #x0000000000000000)))

(check-sat)
(exit)
