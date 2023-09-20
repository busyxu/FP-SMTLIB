(declare-fun a_ack!123 () (_ BitVec 32))
(declare-fun b_ack!122 () (_ BitVec 64))
(assert (not (bvslt a_ack!123 #x000003e8)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!122) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!123 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!122) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 (bvand a_ack!123 #x00000001)))
(assert (bvslt #x00000001 a_ack!123))
(assert (bvslt #x00000003 a_ack!123))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!123 #x00000002) #x00000001)))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!1 #xbff0000000000000 #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!123 #x00000002) #x00000001)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!1 #xbff0000000000000 #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!1 #xbff0000000000000 #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3febb67ae8584caa))))))
(assert (let ((a!1 (not (= #x00000000 (bvand (bvsdiv a_ack!123 #x00000002) #x00000001)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             (ite a!1 #xbff0000000000000 #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3febb67ae8584caa))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3febb67ae8584caa))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   (ite a!1 #xbff0000000000000 #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3fe6a09e667f3bcd))))))

(check-sat)
(exit)
