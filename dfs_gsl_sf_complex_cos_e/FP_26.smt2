(declare-fun b_ack!256 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!256))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!256)
                           ((_ to_fp 11 53) b_ack!256))
                   ((_ to_fp 11 53) #x3ce952c77030ad4a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                         a!1)
                 ((_ to_fp 11 53) #x3d6ae7f3e733b81f))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!256)
                           ((_ to_fp 11 53) b_ack!256))
                   ((_ to_fp 11 53) #x3ce952c77030ad4a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3d6ae7f3e733b81f))))

(check-sat)
(exit)
