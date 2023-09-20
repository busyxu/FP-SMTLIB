(declare-fun b_ack!639 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!639)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!639)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!639)))
                   ((_ to_fp 11 53) #x4020000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!639))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c814b37f4b51f71))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3cb3749ef34bc35f)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbcb3749ef34bc35f))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c814b37f4b51f71)))
                   a!6))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!8))
                           (fp.abs a!5))
                   ((_ to_fp 11 53) #x3cb87fe49aab41e0)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!8)
                            a!5)
                    ((_ to_fp 11 53) #xbcb87fe49aab41e0))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!10))
                            (fp.abs a!8))
                    ((_ to_fp 11 53) #x3cdfb49140a1644f)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            a!8)
                    ((_ to_fp 11 53) #x3cdfb49140a1644f))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!12))
                            (fp.abs a!10))
                    ((_ to_fp 11 53) #x3cf13428ff6ed89c)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!12)
                            a!10)
                    ((_ to_fp 11 53) #x3cf13428ff6ed89c))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!14))
                            (fp.abs a!12))
                    ((_ to_fp 11 53) #x3d057b6f81f8fd0e)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!14)
                            a!12)
                    ((_ to_fp 11 53) #xbd057b6f81f8fd0e))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!7 a!9)
                                    a!11)
                            a!13)
                    a!15))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!17))
                            (fp.abs a!14))
                    ((_ to_fp 11 53) #x3d275e38b1686811)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!17)
                            a!14)
                    ((_ to_fp 11 53) #xbd275e38b1686811))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!19))
                            (fp.abs a!17))
                    ((_ to_fp 11 53) #x3d1153dd90af7a01)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!19)
                            a!17)
                    ((_ to_fp 11 53) #x3d1153dd90af7a01))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!21))
                            (fp.abs a!19))
                    ((_ to_fp 11 53) #x3d5b1cc4818bd483)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!21)
                            a!19)
                    ((_ to_fp 11 53) #x3d5b1cc4818bd483))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!23))
                            (fp.abs a!21))
                    ((_ to_fp 11 53) #x3d69434256cbafff)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!23)
                            a!21)
                    ((_ to_fp 11 53) #x3d69434256cbafff))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!18)
                                    a!20)
                            a!22)
                    a!24))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!26))
                            (fp.abs a!23))
                    ((_ to_fp 11 53) #x3d7f90503bfe65f2)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!26)
                            a!23)
                    ((_ to_fp 11 53) #xbd7f90503bfe65f2))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!28))
                            (fp.abs a!26))
                    ((_ to_fp 11 53) #x3dad0fd580a89e08)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!28)
                            a!26)
                    ((_ to_fp 11 53) #xbdad0fd580a89e08))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!30))
                            (fp.abs a!28))
                    ((_ to_fp 11 53) #x3dc1511c7b4b7113)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!30)
                            a!28)
                    ((_ to_fp 11 53) #xbdc1511c7b4b7113))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!32))
                            (fp.abs a!30))
                    ((_ to_fp 11 53) #x3daa24fda5ac4a25)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!32)
                            a!30)
                    ((_ to_fp 11 53) #x3daa24fda5ac4a25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!27)
                                    a!29)
                            a!31)
                    a!33))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!35))
                            (fp.abs a!32))
                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!35)
                            a!32)
                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!37))
                            (fp.abs a!35))
                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!37)
                            a!35)
                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!39))
                            (fp.abs a!37))
                    ((_ to_fp 11 53) #x3e58569280edf9e5)))
      (a!41 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!39)
                                    a!37)
                            ((_ to_fp 11 53) #x3e58569280edf9e5)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!34 a!36)
                    a!38)
            a!40)
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!41) (fp.abs a!39))
            ((_ to_fp 11 53) #x3e8b8007d9c3a27d))))))))))))))))))))))))

(check-sat)
(exit)
