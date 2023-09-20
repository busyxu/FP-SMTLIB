(declare-fun b_ack!1932 () (_ BitVec 32))
(declare-fun a_ack!1934 () (_ BitVec 32))
(declare-fun c_ack!1933 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1932 #x00000000)))
(assert (not (bvslt a_ack!1934 #x00000000)))
(assert (not (bvslt b_ack!1932 a_ack!1934)))
(assert (not (bvult b_ack!1932 a_ack!1934)))
(assert (not (= a_ack!1934 b_ack!1932)))
(assert (= #x00000000 a_ack!1934))
(assert (bvult a_ack!1934 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1934)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!1934)))
       #x0000000000001001))
(assert (not (bvslt (bvsub b_ack!1932 a_ack!1934) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1932 a_ack!1934))))
(assert (not (= #x00000001 (bvsub b_ack!1932 a_ack!1934))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1933) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1933))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 (bvsub b_ack!1932 a_ack!1934)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1933))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 (bvsub b_ack!1932 a_ack!1934)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1933)
                                   ((_ to_fp 11 53) c_ack!1933))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1933))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1933)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1933)
                                   ((_ to_fp 11 53) c_ack!1933))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            ((_ to_fp 11 53) c_ack!1933)))))

(check-sat)
(exit)
