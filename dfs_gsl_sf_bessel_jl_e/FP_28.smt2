(declare-fun a_ack!397 () (_ BitVec 32))
(declare-fun b_ack!396 () (_ BitVec 64))
(assert (not (bvslt a_ack!397 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!397)))
(assert (not (= #x00000001 a_ack!397)))
(assert (= #x00000002 a_ack!397))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!396))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!396))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!396)
                           ((_ to_fp 11 53) b_ack!396))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 ((_ to_fp 11 53) #x3c9e76d4fa744d95))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!396)
                           ((_ to_fp 11 53) b_ack!396))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3c9e76d4fa744d95))))

(check-sat)
(exit)
